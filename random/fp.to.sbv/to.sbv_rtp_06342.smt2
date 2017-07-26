(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x497E02D0)))
;; x should be Float32(0x497E02D0 [Rational(1040429), 1040429.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 1040429

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000011111110000000101101))
;; z should be 1040429

(assert (not (= y z)))
(check-sat)
(exit)
