(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10101110 #b11000000111110111000111)))
;; x should be Float32(0x57607DC7 [Rational(246830814199808), 246830814199808.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFFE86DDF)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80000000)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
