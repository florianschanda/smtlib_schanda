(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7061237777301643259164620758383534848690032958984375p-650 {+ 3180098782263015 -650 (3.65185e-196)}
; 1.7061237777301643259164620758383534848690032958984375p-650 S == 1.3061867315702471170624221485923044383525848388671875p-325
; [HW: 1.3061867315702471170624221485923044383525848388671875p-325] 

; mpf : + 1378942450205555 -325
; mpfd: + 1378942450205555 -325 (1.91098e-098) class: Pos. norm. non-zero
; hwf : + 1378942450205555 -325 (1.91098e-098) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101110101 #b1011010011000100100001110010010001000111011011100111)))
(assert (= r (fp #b0 #b01010111010 #b0100111001100010010000001110111010010000001101110011)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
