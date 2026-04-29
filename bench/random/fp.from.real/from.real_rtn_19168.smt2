(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80166AD6)))
;; x should be Float32(0x80166AD6 [Rational(-734571, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 3672857899.0 1784059615882449851322857461811868920478433280000.0)))))
;; w should be Float32(0x80166AD8 [Rational(-183643, 89202980794122492566142873090593446023921664), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
