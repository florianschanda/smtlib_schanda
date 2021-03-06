(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00010100010111011010010)))
;; x should be Float32(0x000A2ED2 [Rational(333673, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y (_ -zero 8 24)))
;; y should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.div RTZ x y)))
(assert (= result ((_ to_fp 8 24) #xFF800000)))
(check-sat)
(exit)
