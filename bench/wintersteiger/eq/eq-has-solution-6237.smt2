(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.840493344221483251743620712659321725368499755859375p841 {+ 3785245511843254 841 (2.69874e+253)}
; Y = 1.931296319316011089739504313911311328411102294921875p-958 {+ 4194185756643102 -958 (7.92708e-289)}
; 1.840493344221483251743620712659321725368499755859375p841 = 1.931296319316011089739504313911311328411102294921875p-958 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101001000 #b1101011100101010100100100110000111101111110110110110)))
(assert (= y (fp #b0 #b00001000001 #b1110111001101001011011111000001001011000111100011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
