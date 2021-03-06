(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x007FFFFF)))
;; x should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7CCD3EA6)))
;; y should be Float32(0x7CCD3EA6 [Rational(8525532138160347482360616042924867584), 8525532138160347482360616042924867584.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xA7ABAC46)))
;; z should be Float32(0xA7ABAC46 [Rational(-5625379, 1180591620717411303424), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x3DCD3EA5))))
(check-sat)
(exit)
