(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80800000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 72900161921.0 7136238463529799405291429847247475681913733120000.0)))))
;; w should be Float32(0x806F3CA0 [Rational(-227813, 22300745198530623141535718272648361505980416), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
