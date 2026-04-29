(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.02988346346036063749806999112479388713836669921875p20 {+ 134583154904620 20 (1.07991e+006)}
; Y = 1.9679700791378025304112497906317003071308135986328125p774 {+ 4359349687710797 774 (1.9554e+233)}
; 1.02988346346036063749806999112479388713836669921875p20 = 1.9679700791378025304112497906317003071308135986328125p774 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000010011 #b0000011110100110011100010101001001000000111000101100)))
(assert (= y (fp #b0 #b11100000101 #b1111011111001100111000110001100101100111010001001101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
