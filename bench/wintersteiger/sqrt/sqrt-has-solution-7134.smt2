(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3717148547829054461288933453033678233623504638671875p518 {+ 1674054881488371 518 (1.17707e+156)}
; 1.3717148547829054461288933453033678233623504638671875p518 S == 1.1712023116365954944484428779105655848979949951171875p259
; [HW: 1.1712023116365954944484428779105655848979949951171875p259] 

; mpf : + 771026666891539 259
; mpfd: + 771026666891539 259 (1.08493e+078) class: Pos. norm. non-zero
; hwf : + 771026666891539 259 (1.08493e+078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000000101 #b0101111100101000101101000110100010111010110111110011)))
(assert (= r (fp #b0 #b10100000010 #b0010101111010011111010100010100101111010100100010011)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
