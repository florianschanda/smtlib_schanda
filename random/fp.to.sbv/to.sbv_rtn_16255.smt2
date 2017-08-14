(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -subnormal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807DBDBF)))
;; x should be Float32(0x807DBDBF [Rational(-8240575, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -1

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111111111111111111111111))
;; z should be -1

(assert (not (= y z)))
(check-sat)
(exit)
