(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.305790640797083401736244923085905611515045166015625p-804 {+ 1377158615947130 -804 (1.22393e-242)}
; 1.305790640797083401736244923085905611515045166015625p-804 S == 1.14271196755660309207769387285225093364715576171875p-402
; [HW: 1.14271196755660309207769387285225093364715576171875p-402] 

; mpf : + 642717563909228 -402
; mpfd: + 642717563909228 -402 (1.10631e-121) class: Pos. norm. non-zero
; hwf : + 642717563909228 -402 (1.10631e-121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011011011 #b0100111001001000010010111010000110100101011101111010)))
(assert (= r (fp #b0 #b01001101101 #b0010010010001000110001011000000101100111010001101100)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
