(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.533794864532258994671565233147703111171722412109375p-724 {+ 2403998352999766 -724 (1.738e-218)}
; 1.533794864532258994671565233147703111171722412109375p-724 S == 1.2384647207459156259545807188260369002819061279296875p-362
; [HW: 1.2384647207459156259545807188260369002819061279296875p-362] 

; mpf : + 1073949627492315 -362
; mpfd: + 1073949627492315 -362 (1.31833e-109) class: Pos. norm. non-zero
; hwf : + 1073949627492315 -362 (1.31833e-109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100101011 #b1000100010100110110001111011110111110000010101010110)))
(assert (= r (fp #b0 #b01010010101 #b0011110100001100000001100010000011011010011111011011)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
