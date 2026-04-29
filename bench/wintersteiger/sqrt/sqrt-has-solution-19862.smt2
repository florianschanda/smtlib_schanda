(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.142276600745772530132171596051193773746490478515625p-758 {+ 640756846102202 -758 (7.53416e-229)}
; 1.142276600745772530132171596051193773746490478515625p-758 S == 1.0687734094492491454531091221724636852741241455078125p-379
; [HW: 1.0687734094492491454531091221724636852741241455078125p-379] 

; mpf : + 309727901168637 -379
; mpfd: + 309727901168637 -379 (8.67995e-115) class: Pos. norm. non-zero
; hwf : + 309727901168637 -379 (8.67995e-115) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100001001 #b0010010001101100001111010100001100110000011010111010)))
(assert (= r (fp #b0 #b01010000100 #b0001000110011011001000100101100001101011001111111101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
