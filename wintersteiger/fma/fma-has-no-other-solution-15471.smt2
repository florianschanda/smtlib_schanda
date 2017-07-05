(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.147252287694333627854348378605209290981292724609375p157 {+ 663165347989654 157 (2.09589e+047)}
; Y = -1.2435274149444470737080337130464613437652587890625p263 {- 1096749975198312 263 (-1.84308e+079)}
; Z = 1.690299944021997458065698083373717963695526123046875p961 {+ 3108834570671342 961 (3.2945e+289)}
; 1.147252287694333627854348378605209290981292724609375p157 x -1.2435274149444470737080337130464613437652587890625p263 1.690299944021997458065698083373717963695526123046875p961 == 1.6902999440219972360210931583424098789691925048828125p961
; [HW: 1.6902999440219972360210931583424098789691925048828125p961] 

; mpf : + 3108834570671341 961
; mpfd: + 3108834570671341 961 (3.2945e+289) class: Pos. norm. non-zero
; hwf : + 3108834570671341 961 (3.2945e+289) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010011100 #b0010010110110010010100110110111111101000100010010110)))
(assert (= y (fp #b1 #b10100000110 #b0011111001010111110100000000101011011101101001101000)))
(assert (= z (fp #b0 #b11111000000 #b1011000010110111011111110100010000000001010011101110)))
(assert (= r (fp #b0 #b11111000000 #b1011000010110111011111110100010000000001010011101101)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
