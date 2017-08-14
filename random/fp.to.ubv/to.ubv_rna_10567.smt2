(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x45966E76)))
;; x should be Float32(0x45966E76 [Rational(4929339, 1024), 4813.807617])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= y z))
(check-sat)
(exit)
