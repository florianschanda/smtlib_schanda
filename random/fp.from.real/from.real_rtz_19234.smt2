(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A16CC06)))
;; x should be Float32(0x4A16CC06 [Rational(4941315, 2), 2470657.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 3998581.0 4.0))))
;; w should be Float32(0x49740DD4 [Rational(3998581, 4), 999645.250000])

(assert (distinct x w))
(check-sat)
(exit)
