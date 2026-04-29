(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.775556293963564513660458032973110675811767578125p211 {+ 3492795036499152 211 (5.84337e+063)}
; 1.775556293963564513660458032973110675811767578125p211 S == 1.884439595191931271500607181224040687084197998046875p105
; [HW: 1.884439595191931271500607181224040687084197998046875p105] 

; mpf : + 3983161831338094 105
; mpfd: + 3983161831338094 105 (7.6442e+031) class: Pos. norm. non-zero
; hwf : + 3983161831338094 105 (7.6442e+031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011010010 #b1100011010001010110110110111011011000111110011010000)))
(assert (= r (fp #b0 #b10001101000 #b1110001001101010101000100010000010100011000001101110)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
