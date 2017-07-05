(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2989221456849671110234112347825430333614349365234375p-403 {- 1346225663919607 -403 (-6.28774e-122)}
; Y = 1.9786545745102184223895847026142291724681854248046875p-671 {+ 4407468377088651 -671 (2.0195e-202)}
; -1.2989221456849671110234112347825430333614349365234375p-403 > 1.9786545745102184223895847026142291724681854248046875p-671 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001101100 #b0100110010000110001010010110011111000100010111110111)))
(assert (= y (fp #b0 #b00101100000 #b1111101010001001000110110010111110011010001010001011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
