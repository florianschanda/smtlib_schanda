(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8178565806333677468131782006821595132350921630859375 967 {+ 3683298591782943 967 (2.26759e+291)}
; 1.8178565806333677468131782006821595132350921630859375 967 I == 1.8178565806333677468131782006821595132350921630859375 967
; [HW: 1.8178565806333677468131782006821595132350921630859375 967] 

; mpf : + 3683298591782943 967
; mpfd: + 3683298591782943 967 (2.26759e+291) class: Pos. norm. non-zero
; hwf : + 3683298591782943 967 (2.26759e+291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000110 #b1101000101011111000011001000001010100011100000011111)))
(assert (= r (fp #b0 #b11111000110 #b1101000101011111000011001000001010100011100000011111)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
