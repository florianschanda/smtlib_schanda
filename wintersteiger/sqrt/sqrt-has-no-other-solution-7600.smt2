(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6425925613459992913334417607984505593776702880859375p-147 {+ 2893979619828895 -147 (9.20705e-045)}
; 1.6425925613459992913334417607984505593776702880859375p-147 S == 1.8125079648630511020002131772344000637531280517578125p-74
; [HW: 1.8125079648630511020002131772344000637531280517578125p-74] 

; mpf : + 3659210567792797 -74
; mpfd: + 3659210567792797 -74 (9.59534e-023) class: Pos. norm. non-zero
; hwf : + 3659210567792797 -74 (9.59534e-023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101101100 #b1010010010000000111100100011001110100010010010011111)))
(assert (= r (fp #b0 #b01110110101 #b1101000000000000100001011010000011010011100010011101)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
