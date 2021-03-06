(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAF301CA)))
;; x should be Float32(0xCAF301CA [Rational(-7962853), -7962853.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -7962853

(declare-const z (_ BitVec 32))
(assert (= z #b11111111100001100111111100011011))
;; z should be -7962853

(assert (not (= y z)))
(check-sat)
(exit)
