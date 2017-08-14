(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10001110 #b01000111110110010000000)))
;; x should be Float32(0x4723EC80 [Rational(83929, 2), 41964.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 145240032153.0 5120000.0)))))
;; w should be Float32(0xC6DD9E63 [Rational(-14524003, 512), -28367.193359])

(assert (not (distinct x w)))
(check-sat)
(exit)
