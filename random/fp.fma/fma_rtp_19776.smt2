(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA08190E9)))
;; x should be Float32(0xA08190E9 [Rational(-8491241, 38685626227668133590597632), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80800000)))
;; y should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80000001)))
;; z should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x80000000))))
(check-sat)
(exit)
