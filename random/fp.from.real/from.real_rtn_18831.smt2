(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00011010 #b11000110011101001010001)))
;; x should be Float32(0x0D633A51 [Rational(14891601, 21267647932558653966460912964485513216), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 14891603147.0 21267647932558653966460912964485513216000.0))))
;; w should be Float32(0x0D633A53 [Rational(14891603, 21267647932558653966460912964485513216), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
