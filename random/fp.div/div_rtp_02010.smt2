(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x47ECAA40)))
;; x should be Float32(0x47ECAA40 [Rational(242345, 2), 121172.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80000000)))
;; y should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.div RTP x y)))
(assert (= result ((_ to_fp 8 24) #xFF800000)))
(check-sat)
(exit)
