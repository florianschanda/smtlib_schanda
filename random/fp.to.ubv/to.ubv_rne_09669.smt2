(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4ACB6BA2)))
;; x should be Float32(0x4ACB6BA2 [Rational(6665681), 6665681.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNE x)))
;; y should be 6665681

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011001011011010111010001))
;; z should be 6665681

(assert (not (= y z)))
(check-sat)
(exit)
