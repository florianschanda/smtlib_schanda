(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A9C3722)))
;; x should be Float32(0x4A9C3722 [Rational(5118865), 5118865.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNE x)))
;; y should be 5118865

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010011100001101110010001))
;; z should be 5118865

(assert (not (= y z)))
(check-sat)
(exit)
