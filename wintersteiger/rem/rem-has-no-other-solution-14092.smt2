(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1830738634730746383638688712380826473236083984375p491 {+ 824491383318616 491 (7.56379e+147)}
; Y = 1.243939069636633920623580706887878477573394775390625p-221 {+ 1098603903116650 -221 (3.69122e-067)}
; 1.1830738634730746383638688712380826473236083984375p491 % 1.243939069636633920623580706887878477573394775390625p-221 == 1.6672012078517983724168516346253454685211181640625p-222
; [HW: 1.6672012078517983724168516346253454685211181640625p-222] 

; mpf : + 3004807111062504 -222
; mpfd: + 3004807111062504 -222 (2.4736e-067) class: Pos. norm. non-zero
; hwf : + 3004807111062504 -222 (2.4736e-067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101010 #b0010111011011101111011011100000001011110100001011000)))
(assert (= y (fp #b0 #b01100100010 #b0011111001110010110010100111011001001110010101101010)))
(assert (= r (fp #b1 #b01100100000 #xa42fc44a12dd8)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
