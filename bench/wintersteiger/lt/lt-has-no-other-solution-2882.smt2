(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7867478009378159331532742726267315447330474853515625p38 {+ 3543197103138105 38 (4.91137e+011)}
; Y = -1.45065687621983929744828856200911104679107666015625p-801 {- 2029578139815620 -801 (-1.08777e-241)}
; 1.7867478009378159331532742726267315447330474853515625p38 < -1.45065687621983929744828856200911104679107666015625p-801 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000100101 #b1100100101101000010011011100101100111010010100111001)))
(assert (= y (fp #b1 #b00011011110 #b0111001101011110001111111100000100010100111011000100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
