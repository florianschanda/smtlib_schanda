(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.145930104910363400705364256282337009906768798828125p-828 {+ 657210766096450 -828 (6.40209e-250)}
; Y = -1.299002014579707431352062485530041158199310302734375p650 {- 1346585361444198 650 (-6.06886e+195)}
; 1.145930104910363400705364256282337009906768798828125p-828 = -1.299002014579707431352062485530041158199310302734375p650 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011000011 #b0010010101011011101011001110010000010111100001000010)))
(assert (= y (fp #b1 #b11010001001 #b0100110010001011011001010110001000001110110101100110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
