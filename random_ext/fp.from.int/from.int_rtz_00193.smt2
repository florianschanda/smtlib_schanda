(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.int RTZ rounded_int)
(declare-const x Int)
(assert (= x 241153315559796270609283615571985220557))
(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x7F356C70 [Rational(241153306927667143366557853606442172416), 241153306927667143366557853606442172416.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x7F356C70)))
(assert (not (= y z)))
