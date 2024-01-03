   %       A   s   s   u   m   i   n   g       d   a   t   a   ,       X   _   t   r   a   i   n   ,       X   _   t   e   s   t   ,       y   _   t   r   a   i   n   ,       a   n   d       y   _   t   e   s   t       a   r   e       a   l   r   e   a   d   y       d   e   f   i   n   e   d      
   c   l   e   a   r       a   l   l   ;      
      
   d   a   t   a       =       r   e   a   d   t   a   b   l   e   (   '   s   u   r   v   e   y       l   u   n   g       c   a   n   c   e   r   .   c   s   v   '   )   ;      
      
   %       C   o   n   v   e   r   t       c   o   l   u   m   n   s       t   o       n   u   m   e   r   i   c      
   t   o   C   o   n   v   e   r   t       =       d   a   t   a   .   P   r   o   p   e   r   t   i   e   s   .   V   a   r   i   a   b   l   e   N   a   m   e   s   (   3   :   e   n   d   -   1   )   ;      
   d   a   t   a   {   :   ,       t   o   C   o   n   v   e   r   t   }       =       d   a   t   a   {   :   ,       t   o   C   o   n   v   e   r   t   }       -       1   ;      
      
   %       M   a   p       '   G   E   N   D   E   R   '       t   o       n   u   m   e   r   i   c       v   a   l   u   e   s      
   d   a   t   a   .   G   E   N   D   E   R       =       g   r   p   2   i   d   x   (   c   a   t   e   g   o   r   i   c   a   l   (   d   a   t   a   .   G   E   N   D   E   R   )   )       -       1   ;      
      
   %       M   a   p       '   L   U   N   G   _   C   A   N   C   E   R   '       t   o       n   u   m   e   r   i   c       v   a   l   u   e   s      
   d   a   t   a   .   L   U   N   G   _   C   A   N   C   E   R       =       g   r   p   2   i   d   x   (   c   a   t   e   g   o   r   i   c   a   l   (   d   a   t   a   .   L   U   N   G   _   C   A   N   C   E   R   )   )       -       1   ;      
      
   %       N   o   r   m   a   l   i   z   e       '   A   G   E   '      
   d   a   t   a   .   A   G   E       =       n   o   r   m   a   l   i   z   e   (   d   a   t   a   .   A   G   E   )   ;      
      
   %       S   p   l   i   t       d   a   t   a       i   n   t   o       f   e   a   t   u   r   e   s       a   n   d       l   a   b   e   l   s      
   X       =       d   a   t   a   (   :   ,       1   :   e   n   d   -   1   )   ;      
   y       =       d   a   t   a   .   L   U   N   G   _   C   A   N   C   E   R   ;      
      
   %       S   p   l   i   t       i   n   t   o       t   r   a   i   n   i   n   g       a   n   d       t   e   s   t   i   n   g       s   e   t   s      
   r   n   g   (   2   0   1   2   )   ;           %       S   e   t       r   a   n   d   o   m       s   e   e   d       f   o   r       r   e   p   r   o   d   u   c   i   b   i   l   i   t   y      
   i   d   x       =       r   a   n   d   p   e   r   m   (   s   i   z   e   (   X   ,       1   )   )   ;      
   t   r   a   i   n   R   a   t   i   o       =       0   .   8   ;      
   t   r   a   i   n   I   d   x       =       i   d   x   (   1   :   r   o   u   n   d   (   t   r   a   i   n   R   a   t   i   o       *       l   e   n   g   t   h   (   i   d   x   )   )   )   ;      
   t   e   s   t   I   d   x       =       i   d   x   (   r   o   u   n   d   (   t   r   a   i   n   R   a   t   i   o       *       l   e   n   g   t   h   (   i   d   x   )   )       +       1   :   e   n   d   )   ;      
   %       A   s   s   u   m   i   n   g       d   a   t   a   ,       X   _   t   r   a   i   n   ,       X   _   t   e   s   t   ,       y   _   t   r   a   i   n   ,       a   n   d       y   _   t   e   s   t       a   r   e       a   l   r   e   a   d   y       d   e   f   i   n   e   d      
   X   _   t   r   a   i   n       =       X   (   t   r   a   i   n   I   d   x   ,       :   )   ;      
   y   _   t   r   a   i   n       =       y   (   t   r   a   i   n   I   d   x   ,       :   )   ;      
   X   _   t   e   s   t       =       X   (   t   e   s   t   I   d   x   ,       :   )   ;      
   y   _   t   e   s   t       =       y   (   t   e   s   t   I   d   x   ,       :   )   ;      
      
      
   %       C   o   n   v   e   r   t       t   a   b   l   e   s       t   o       m   a   t   r   i   c   e   s      
   X   _   t   r   a   i   n   _   m   a   t       =       t   a   b   l   e   2   a   r   r   a   y   (   X   _   t   r   a   i   n   )   ;      
   X   _   t   e   s   t   _   m   a   t       =       t   a   b   l   e   2   a   r   r   a   y   (   X   _   t   e   s   t   )   ;      
      
   %       C   r   e   a   t   e       a       P   a   t   t   e   r   n       R   e   c   o   g   n   i   t   i   o   n       N   e   t   w   o   r   k      
   h   i   d   d   e   n   L   a   y   e   r   S   i   z   e       =       1   0   ;      
   n   e   t       =       p   a   t   t   e   r   n   n   e   t   (   h   i   d   d   e   n   L   a   y   e   r   S   i   z   e   ,       '   t   r   a   i   n   l   m   '   )   ;       %       '   t   r   a   i   n   l   m   '       i   s       j   u   s   t       a   n       e   x   a   m   p   l   e   ,       c   h   o   o   s   e       a   n       a   p   p   r   o   p   r   i   a   t   e       t   r   a   i   n   i   n   g       a   l   g   o   r   i   t   h   m      
      
   %       S   e   t   u   p       D   i   v   i   s   i   o   n       o   f       D   a   t   a       f   o   r       T   r   a   i   n   i   n   g   ,       V   a   l   i   d   a   t   i   o   n   ,       T   e   s   t   i   n   g      
   n   e   t   .   d   i   v   i   d   e   P   a   r   a   m   .   t   r   a   i   n   R   a   t   i   o       =       8   0   /   1   0   0   ;      
   n   e   t   .   d   i   v   i   d   e   P   a   r   a   m   .   v   a   l   R   a   t   i   o       =       1   /   1   0   0   ;      
   n   e   t   .   d   i   v   i   d   e   P   a   r   a   m   .   t   e   s   t   R   a   t   i   o       =       1   9   /   1   0   0   ;      
      
   %       T   r   a   i   n       t   h   e       N   e   t   w   o   r   k      
   [   n   e   t   ,       t   r   ]       =       t   r   a   i   n   (   n   e   t   ,       X   _   t   r   a   i   n   _   m   a   t   '   ,       y   _   t   r   a   i   n   '   )   ;      
      
   %       T   e   s   t       t   h   e       N   e   t   w   o   r   k      
   y   _   p   r   e   d       =       r   o   u   n   d   (   n   e   t   (   X   _   t   e   s   t   _   m   a   t   '   )   )   '   ;           %       A   s   s   u   m   i   n   g       b   i   n   a   r   y       c   l   a   s   s   i   f   i   c   a   t   i   o   n   ,       a   d   j   u   s   t       a   c   c   o   r   d   i   n   g   l   y      
      
   %       E   v   a   l   u   a   t   e       t   h   e       m   o   d   e   l      
   a   c   c   u   r   a   c   y       =       s   u   m   (   y   _   p   r   e   d       =   =       y   _   t   e   s   t   )       /       l   e   n   g   t   h   (   y   _   t   e   s   t   )   ;      
   d   i   s   p   (   [   '   A   c   c   u   r   a   c   y       o   f       t   h   e       m   o   d   e   l       u   s   e   d       i   s       :       '   ,       n   u   m   2   s   t   r   (   a   c   c   u   r   a   c   y   )   ]   )   ;      
   d   i   s   p   (   '   N   e   u   r   a   l       n   e   t   w   o   r   k       t   r   a   i   n   i   n   g       a   n   d       e   v   a   l   u   a   t   i   o   n       c   o   m   p   l   e   t   e   d       s   u   c   c   e   s   s   f   u   l   l   y   !   '   )   ;      
   %       V   i   e   w       t   h   e       N   e   t   w   o   r   k      
   v   i   e   w   (   n   e   t   )      
      
   %       P   l   o   t   s      
   f   i   g   u   r   e   ;      
   p   l   o   t   (   t   r   .   e   p   o   c   h   ,       t   r   .   p   e   r   f   )   ;      
   x   l   a   b   e   l   (   '   E   p   o   c   h   '   )   ;      
   y   l   a   b   e   l   (   '   P   e   r   f   o   r   m   a   n   c   e       (   E   r   r   o   r   )   '   )   ;      
   t   i   t   l   e   (   '   T   r   a   i   n   i   n   g       P   e   r   f   o   r   m   a   n   c   e   '   )   ;      
      
   f   i   g   u   r   e   ,       p   l   o   t   p   e   r   f   o   r   m   (   t   r   )      
   %       A   d   d       m   o   r   e       p   l   o   t   s       a   s       n   e   e   d   e   d      
