(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3230462016752444487366346947965212166309356689453125p43 {+ 1454870753488085 43 (1.16376e+013)}
; 1.3230462016752444487366346947965212166309356689453125p43 S == 1.62668140806689276445240466273389756679534912109375p21
; [HW: 1.62668140806689276445240466273389756679534912109375p21] 

; mpf : + 2822322155850076 21
; mpfd: + 2822322155850076 21 (3.4114e+006) class: Pos. norm. non-zero
; hwf : + 2822322155850076 21 (3.4114e+006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000101010 #b0101001010110011001001111110011101001010110011010101)))
(assert (= r (fp #b0 #b10000010100 #b1010000001101110001100010101100010101000100101011100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
