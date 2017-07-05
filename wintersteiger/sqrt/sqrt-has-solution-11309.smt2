(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0185696186838679722086453693918883800506591796875p198 {+ 83630127785080 198 (4.09195e+059)}
; 1.0185696186838679722086453693918883800506591796875p198 S == 1.009242101125328527899682740098796784877777099609375p99
; [HW: 1.009242101125328527899682740098796784877777099609375p99] 

; mpf : + 41622723184150 99
; mpfd: + 41622723184150 99 (6.39683e+029) class: Pos. norm. non-zero
; hwf : + 41622723184150 99 (6.39683e+029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011000101 #b0000010011000000111110101000000011110010010001111000)))
(assert (= r (fp #b0 #b10001100010 #b0000001001011101101100001011101000010100011000010110)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
