(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1440640612891705973908074156497605144977569580078125p-403 {- 648806852739389 -403 (-5.53812e-122)}
; Y = 1.56954799791283239329686693963594734668731689453125p-770 {+ 2565016151169844 -770 (2.52742e-232)}
; -1.1440640612891705973908074156497605144977569580078125p-403 < 1.56954799791283239329686693963594734668731689453125p-770 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001101100 #b0010010011100001011000011101111111000100000100111101)))
(assert (= y (fp #b0 #b00011111101 #b1001000111001101111001011100100010001001101100110100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
