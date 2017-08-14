(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10011000110000100110010)))
;; x should be Float32(0x4A4C6132 [Rational(6697113, 2), 3348556.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 3608702027.0 4096.0)))))
;; w should be Float32(0xC957186C [Rational(-3524123, 4), -881030.750000])

(assert (not (distinct x w)))
(check-sat)
(exit)
