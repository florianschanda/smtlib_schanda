(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.27289105433575588932626487803645431995391845703125p-1005 {+ 1228992050619252 -1005 (3.71232e-303)}
; 1.27289105433575588932626487803645431995391845703125p-1005 S == 1.595550722688411582339540473185479640960693359375p-503
; [HW: 1.595550722688411582339540473185479640960693359375p-503] 

; mpf : + 2682122012779760 -503
; mpfd: + 2682122012779760 -503 (6.09288e-152) class: Pos. norm. non-zero
; hwf : + 2682122012779760 -503 (6.09288e-152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010010 #b0100010111011100001100000010100110111110001101110100)))
(assert (= r (fp #b0 #b01000001000 #b1001100001110110000000110001110100001110010011110000)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
