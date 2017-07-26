(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AE87ABD)))
;; x should be Float32(0x4AE87ABD [Rational(15235773, 2), 7617886.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 7617887

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011101000011110101011111))
;; z should be 7617887

(assert (not (= y z)))
(check-sat)
(exit)
