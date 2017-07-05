(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7267000247433565984778169877245090901851654052734375p235 {- 3272765960644311 235 (-9.5338e+070)}
; Y = 1.6457803254897303002479702627169899642467498779296875p-149 {+ 2908336033238747 -149 (2.30623e-045)}
; -1.7267000247433565984778169877245090901851654052734375p235 > 1.6457803254897303002479702627169899642467498779296875p-149 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011101010 #b1011101000001001000000110100100001000110011011010111)))
(assert (= y (fp #b0 #b01101101010 #b1010010101010001110111000000001001100000111011011011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
