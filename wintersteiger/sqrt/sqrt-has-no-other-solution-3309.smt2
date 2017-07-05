(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0057886050272741851330238205264322459697723388671875p895 {+ 26069559443827 895 (2.65676e+269)}
; 1.0057886050272741851330238205264322459697723388671875p895 S == 1.4183008178995557546642203305964358150959014892578125p447
; [HW: 1.4183008178995557546642203305964358150959014892578125p447] 

; mpf : + 1883859407621213 447
; mpfd: + 1883859407621213 447 (5.15438e+134) class: Pos. norm. non-zero
; hwf : + 1883859407621213 447 (5.15438e+134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111110 #b0000000101111011010111001010110101001000000101110011)))
(assert (= r (fp #b0 #b10110111110 #b0110101100010101110000110010110011000100110001011101)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
