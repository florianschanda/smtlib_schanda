(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AB46F15)))
;; x should be Float32(0x4AB46F15 [Rational(11824917, 2), 5912458.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 5912459

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010110100011011110001011))
;; z should be 5912459

(assert (not (= y z)))
(check-sat)
(exit)
