(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0334490294126812415242966380901634693145751953125p79 {+ 150641036398856 79 (6.24682e+023)}
; 1.0334490294126812415242966380901634693145751953125p79 S == 1.4376710537620775998135513873421587049961090087890625p39
; [HW: 1.4376710537620775998135513873421587049961090087890625p39] 

; mpf : + 1971095194633745 39
; mpfd: + 1971095194633745 39 (7.90368e+011) class: Pos. norm. non-zero
; hwf : + 1971095194633745 39 (7.90368e+011) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001001110 #b0000100010010000000111011001011101101001000100001000)))
(assert (= r (fp #b0 #b10000100110 #b0111000000001011001101011100111001010000011000010001)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
