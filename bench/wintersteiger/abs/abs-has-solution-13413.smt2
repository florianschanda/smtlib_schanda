(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9652722712850430042408333974890410900115966796875p-913 {- 4347199841270392 -913 (-2.83816e-275)}
; -1.9652722712850430042408333974890410900115966796875p-913 | == 1.9652722712850430042408333974890410900115966796875p-913
; [HW: 1.9652722712850430042408333974890410900115966796875p-913] 

; mpf : + 4347199841270392 -913
; mpfd: + 4347199841270392 -913 (2.83816e-275) class: Pos. norm. non-zero
; hwf : + 4347199841270392 -913 (2.83816e-275) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001101110 #b1111011100011100000101010110010011100111101001111000)))
(assert (= r (fp #b0 #b00001101110 #b1111011100011100000101010110010011100111101001111000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
