(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.308186427460756195984004079946316778659820556640625p-70 {+ 1387948279872906 -70 (1.10808e-021)}
; Y = -1.1306396592494600827905060214106924831867218017578125p250 {- 588348720715677 250 (-2.04561e+075)}
; 1.308186427460756195984004079946316778659820556640625p-70 - -1.1306396592494600827905060214106924831867218017578125p250 == 1.130639659249460304835110946442000567913055419921875p250
; [HW: 1.130639659249460304835110946442000567913055419921875p250] 

; mpf : + 588348720715678 250
; mpfd: + 588348720715678 250 (2.04561e+075) class: Pos. norm. non-zero
; hwf : + 588348720715678 250 (2.04561e+075) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110111001 #b0100111011100101010011100100001100000011110110001010)))
(assert (= y (fp #b1 #b10011111001 #b0010000101110001100110011100100000001001011110011101)))
(assert (= r (fp #b0 #b10011111001 #b0010000101110001100110011100100000001001011110011110)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
