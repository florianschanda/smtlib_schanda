(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AEB7596)))
;; x should be Float32(0x4AEB7596 [Rational(7715531), 7715531.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 7715531

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011101011011101011001011))
;; z should be 7715531

(assert (not (= y z)))
(check-sat)
(exit)
