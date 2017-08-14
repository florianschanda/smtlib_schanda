(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01011010001001100000101)))
;; x should be Float32(0x002D1305 [Rational(2953989, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 7384977221.0 1784059615882449851322857461811868920478433280000.0))))
;; w should be Float32(0x002D1306 [Rational(1476995, 356811923176489970264571492362373784095686656), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
