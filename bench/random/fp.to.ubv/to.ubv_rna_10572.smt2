(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x45966A76)))
;; x should be Float32(0x45966A76 [Rational(4928827, 1024), 4813.307617])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 4813

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000001001011001101))
;; z should be 4813

(assert (not (= y z)))
(check-sat)
(exit)
