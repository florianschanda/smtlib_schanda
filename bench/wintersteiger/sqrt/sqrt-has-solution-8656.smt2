(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4604389879696502152484072212246246635913848876953125p844 {+ 2073632854646965 844 (1.71317e+254)}
; 1.4604389879696502152484072212246246635913848876953125p844 S == 1.208486238221043951313049547025002539157867431640625p422
; [HW: 1.208486238221043951313049547025002539157867431640625p422] 

; mpf : + 938938544764170 422
; mpfd: + 938938544764170 422 (1.30888e+127) class: Pos. norm. non-zero
; hwf : + 938938544764170 422 (1.30888e+127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101001011 #b0111010111011111010101000101101100100010000010110101)))
(assert (= r (fp #b0 #b10110100101 #b0011010101011111010110101010011011010011010100001010)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
