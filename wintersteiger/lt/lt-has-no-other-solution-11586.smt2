(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.974647010171323824323508233646862208843231201171875p-798 {+ 4389419911825342 -798 (1.18455e-240)}
; Y = -1.242909894930989356254258382250554859638214111328125p399 {- 1093968912295810 399 (-1.60475e+120)}
; 1.974647010171323824323508233646862208843231201171875p-798 < -1.242909894930989356254258382250554859638214111328125p399 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011100001 #b1111100110000010011101110110100111010100011110111110)))
(assert (= y (fp #b1 #b10110001110 #b0011111000101111010101111100011010011010011110000010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
