(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1478370756375537720117563367239199578762054443359375p521 {+ 665798998752831 521 (7.87967e+156)}
; 1.1478370756375537720117563367239199578762054443359375p521 S == 1.51514822749297639603582865674979984760284423828125p260
; [HW: 1.51514822749297639603582865674979984760284423828125p260] 

; mpf : + 2320021365377940 260
; mpfd: + 2320021365377940 260 (2.80707e+078) class: Pos. norm. non-zero
; hwf : + 2320021365377940 260 (2.80707e+078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001000 #b0010010111011000101001101000110011111111111000111111)))
(assert (= r (fp #b0 #b10100000011 #b1000001111100000110000010001010110101100101110010100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
