(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.357528818605126641472224946483038365840911865234375p975 {+ 1610166654244262 975 (4.33506e+293)}
; Y = 1.5909506679090623659789116572937928140163421630859375p772 {+ 2661405207789599 772 (3.95197e+232)}
; 1.357528818605126641472224946483038365840911865234375p975 M 1.5909506679090623659789116572937928140163421630859375p772 == 1.357528818605126641472224946483038365840911865234375p975
; [HW: 1.357528818605126641472224946483038365840911865234375p975] 

; mpf : + 1610166654244262 975
; mpfd: + 1610166654244262 975 (4.33506e+293) class: Pos. norm. non-zero
; hwf : + 1610166654244262 975 (4.33506e+293) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001110 #b0101101110000111000000100011011101001001010110100110)))
(assert (= y (fp #b0 #b11100000011 #b1001011101001000100010110000000000111000000000011111)))
(assert (= r (fp #b0 #b11111001110 #b0101101110000111000000100011011101001001010110100110)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
