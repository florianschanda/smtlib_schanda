(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.678640510840729849206809376482851803302764892578125p-147 {+ 3056325151740834 -147 (9.40911e-045)}
; Y = 1.66679899555889932116770069114863872528076171875p-60 {+ 3002995707930080 -60 (1.44572e-018)}
; 1.678640510840729849206809376482851803302764892578125p-147 M 1.66679899555889932116770069114863872528076171875p-60 == 1.66679899555889932116770069114863872528076171875p-60
; [HW: 1.66679899555889932116770069114863872528076171875p-60] 

; mpf : + 3002995707930080 -60
; mpfd: + 3002995707930080 -60 (1.44572e-018) class: Pos. norm. non-zero
; hwf : + 3002995707930080 -60 (1.44572e-018) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101101100 #b1010110110111011011000100110111111001101001110100010)))
(assert (= y (fp #b0 #b01111000011 #b1010101010110011010101101100011011101110010111100000)))
(assert (= r (fp #b0 #b01111000011 #b1010101010110011010101101100011011101110010111100000)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
