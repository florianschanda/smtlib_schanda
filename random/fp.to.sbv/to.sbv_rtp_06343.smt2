(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x497E02C0)))
;; x should be Float32(0x497E02C0 [Rational(1040428), 1040428.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 1040428

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000011111110000000101100))
;; z should be 1040428

(assert (not (= y z)))
(check-sat)
(exit)
