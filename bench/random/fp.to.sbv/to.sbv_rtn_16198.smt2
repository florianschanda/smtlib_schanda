(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -subnormal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x801CC45C)))
;; x should be Float32(0x801CC45C [Rational(-471319, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -1

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111111111111111111111111))
;; z should be -1

(assert (= y z))
(check-sat)
(exit)
