(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.245215667288838812254425647552125155925750732421875p40 {- 1104353187827422 40 (-1.36913e+012)}
; Y = -1.72668085873773424765431627747602760791778564453125p-945 {- 3272679644628532 -945 (-5.80585e-285)}
; -1.245215667288838812254425647552125155925750732421875p40 * -1.72668085873773424765431627747602760791778564453125p-945 == 1.075045028853986561756528317346237599849700927734375p-904
; [HW: 1.075045028853986561756528317346237599849700927734375p-904] 

; mpf : + 337972763982822 -904
; mpfd: + 337972763982822 -904 (7.94896e-273) class: Pos. norm. non-zero
; hwf : + 337972763982822 -904 (7.94896e-273) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000100111 #b0011111011000110011101000011011101111000111011011110)))
(assert (= y (fp #b1 #b00001001110 #b1011101000000111110000011011101011101000011000110100)))
(assert (= r (fp #b0 #b00001110111 #b0001001100110110001001101010100010100111101111100110)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
