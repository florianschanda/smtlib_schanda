(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00000000000000000000001)))
;; x should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xB2A6A8BA)))
;; y should be Float32(0xB2A6A8BA [Rational(-5461085, 281474976710656), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x947E7A64)))
;; z should be Float32(0x947E7A64 [Rational(-4169369, 324518553658426726783156020576256), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x947E7A63))))
(check-sat)
(exit)
