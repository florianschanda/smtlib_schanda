(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1127052781466861830494963214732706546783447265625p646 {- 507579448664104 646 (-3.24906e+194)}
; Y = -1.8001760211565629443697389433509670197963714599609375p237 {- 3603672430711503 237 (-3.97579e+071)}
; -1.1127052781466861830494963214732706546783447265625p646 - -1.8001760211565629443697389433509670197963714599609375p237 == -1.1127052781466859610048913964419625699520111083984375p646
; [HW: -1.1127052781466859610048913964419625699520111083984375p646] 

; mpf : - 507579448664103 646
; mpfd: - 507579448664103 646 (-3.24906e+194) class: Neg. norm. non-zero
; hwf : - 507579448664103 646 (-3.24906e+194) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010000101 #b0001110011011010010000001100101110111010000000101000)))
(assert (= y (fp #b1 #b10011101100 #b1100110011011000010101011111000111101001001011001111)))
(assert (= r (fp #b1 #b11010000101 #b0001110011011010010000001100101110111010000000100111)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
