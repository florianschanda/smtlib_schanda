(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b10111100110010000111000)))
;; x should be Float32(0x495E6438 [Rational(1821831, 2), 910915.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xA2FF66F1)))
;; y should be Float32(0xA2FF66F1 [Rational(-16738033, 2417851639229258349412352), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (not (= result (fp #b0 #b10010010 #b10111100110010000111000))))
(check-sat)
(exit)
