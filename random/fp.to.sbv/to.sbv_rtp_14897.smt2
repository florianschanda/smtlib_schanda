(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AE1A3FE)))
;; x should be Float32(0x4AE1A3FE [Rational(7393791), 7393791.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 7393791

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011100001101000111111111))
;; z should be 7393791

(assert (= y z))
(check-sat)
(exit)
