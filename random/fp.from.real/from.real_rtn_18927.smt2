(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01011110101101000011101)))
;; x should be Float32(0x002F5A1D [Rational(3103261, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 1551631459.0 356811923176489970264571492362373784095686656000.0))))
;; w should be Float32(0x002F5A1E [Rational(1551631, 356811923176489970264571492362373784095686656), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
